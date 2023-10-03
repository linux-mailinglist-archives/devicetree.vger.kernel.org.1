Return-Path: <devicetree+bounces-5436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B897B6546
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 683FC28160F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB6CDF4B;
	Tue,  3 Oct 2023 09:17:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B65DDB7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:17:43 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB68AB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 02:17:41 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ada2e6e75fso115279166b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 02:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696324660; x=1696929460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dG62fHmSAmPy/hq8VeKinTVmXs7wBP/IZaUYZJwyGGY=;
        b=Qz5XFU3uahBArVo3hC2zbYdi+y+gW9f1nb25BgPqg+GcMveafJnTVt93HPhOTe87Ht
         qyKSbFZymTQbQs0TRtxPgqtTDWlRhfwxoa+oRsBTZ8EkbE3acFrZSPtke6m2hP0aNkQt
         sGuxbLcAyogNJSKYFZZMH/uF6gHprjqIWCUwDbaXCW52FPOyaEsLlE5j7Js1Le/m79f3
         kIn0W6iFVVM+9qXKuL0dJCGQ/RybbDEesunhdRlvkbYuctcpIAmmBmgYgt46WBZOBYXW
         LBwVo7glUDaj64poFhUzkTVO7EHCDFKN4wymg3pO6lS0Xm7erEKHUJ3IpZrL5EcXQtQR
         N4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696324660; x=1696929460;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dG62fHmSAmPy/hq8VeKinTVmXs7wBP/IZaUYZJwyGGY=;
        b=qjmLgBrB6CgTx8cV4x+/nJnmqqOLeqBglNLQ7y4C2C76aP2NzdbK0hfYXo3aum31Kz
         49g1PV6WfaWmMzcZzqDUXxyl+FAHjVnFbZFDWbf5ed/NHlfsIl0L8bpEWaBCBmV+0spV
         +uMud3c86TIqXaoeeQQ3nxG0n5pjv0SWkv1YJDNG5Yskh4VmwYEDamBEaeN0zw78OWAF
         CbysBRmPvqLLmp8G58O36X+0EdQNVjmAEvTkhjvwHSukh3gC819ZICVmUP34zjD+AutL
         B0uJITrJtMlSLb6Erpko1IxxXOS5vH6YPvJq9xDF8Z5k3mMo7Ia2TQfK7RTZCEeg2lEB
         b+qg==
X-Gm-Message-State: AOJu0YxivbcStqlEpXFr7GKenQsNfC9p0gdHs/PzYKZDav29crb5AQqY
	2wE032yGov21W4Tk42K1hW0tpw==
X-Google-Smtp-Source: AGHT+IHWqtm3dXFLc0G4eQiSBOfmV/eA5IvHJJzXJbt56Gb26c9gozSgci5uLCmWc8b4Vq9mvPZ+ZQ==
X-Received: by 2002:a17:906:10d1:b0:9b2:955a:e375 with SMTP id v17-20020a17090610d100b009b2955ae375mr11058131ejv.23.1696324659935;
        Tue, 03 Oct 2023 02:17:39 -0700 (PDT)
Received: from [192.168.1.197] (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id a7-20020a17090682c700b009adc5802d08sm719878ejy.190.2023.10.03.02.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 02:17:39 -0700 (PDT)
Message-ID: <f2863562-33dc-443c-950d-2024c07943a1@linaro.org>
Date: Tue, 3 Oct 2023 11:17:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Content-Language: en-US
To: Mehdi Djait <mehdi.djait@bootlin.com>, Rob Herring <robh@kernel.org>
Cc: mchehab@kernel.org, heiko@sntech.de, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, paul.kocialkowski@bootlin.com,
 miquel.raynal@bootlin.com, maxime.chevallier@bootlin.com,
 luca.ceresoli@bootlin.com, thomas.petazzoni@bootlin.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
 <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
 <20231002171801.GA1942512-robh@kernel.org> <ZRvTdm5cTMT1tHlM@pc-86.home>
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
In-Reply-To: <ZRvTdm5cTMT1tHlM@pc-86.home>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 03/10/2023 10:40, Mehdi Djait wrote:

>>> +maintainers:
>>> +  - Mehdi Djait <mehdi.djait@bootlin.com>
>>> +
>>> +description: |-
>>
>> Don't need '|-'.
>>
>>> +  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288
>>
>> Write complete sentences.
>>
>>
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: rockchip,px30-vip
>>
>> I see 4 SoCs listed, but only 1 compatible.
>>
> 
> PX30 is the only SoC I have used to test the driver. What is the best
> way to proceed here ? Change the description ?
> 

The best is to have bindings complete for all of the four SoCs, even if
you did not test the driver on them. The "complete" means
hardware-complete, so what the datasheet/spec is saying.

If anything is missing, could be added later.

You can change the description and drop other SoCs as well.

Best regards,
Krzysztof


