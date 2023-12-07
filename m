Return-Path: <devicetree+bounces-22585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 222DA8082EB
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4507C1C21B60
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA782DF92;
	Thu,  7 Dec 2023 08:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zjZ/587C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF704C6
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 00:24:43 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c236624edso7392135e9.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 00:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701937482; x=1702542282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KyoplbVSScRANahbTFEO4gb7TxK2Dx2/SzeNBhNRRPg=;
        b=zjZ/587C2rEBYowxNe90g+UBaWmiOx32Veq7PrdQkfFEiUXqCf1yJokqt4UnfvScMA
         iKWKmkpSS15GXFuEn9PId3BGkrB1Nu5rrc1B3HFNgugZu/sUtaLyCME/1lqMhbOL867v
         WjfoBHMH7RDKs+6meOCe0yXVJnrCUjllE58y8RNs+Wd0WIPbS5UayxHweiEdl37YqIMu
         XTQs/InnRs4pxvkN8dmwchfi7VidZJ7HQD01ClWGZlU+jtM0H9F/gUeIkvx8xSAOw4Og
         nmA81kXzNxFnZAKnvFLIeao4rYDnpxgHmG8JJXRChipYpHUUJ0xiTWvHCFilthGecJzE
         P2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701937482; x=1702542282;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KyoplbVSScRANahbTFEO4gb7TxK2Dx2/SzeNBhNRRPg=;
        b=j12NvV4f/U+8xwRrXqqHKVGf7SYFIEJeQDx68aODlUjly6wSablBa4uyBp27I9QNfU
         llbQO8j1hTJssJduhvhPBfBbBpl0P8GKvo3IKm63KQT+ePFgR1YaXw2hYIQwJjjf0PVT
         sGp1NVFD9iyDBrj2y0tHUkXUmxp7TuPIkg2+Bdf4RQPBBZ7c2QYkBg9LpdRPxfQmBVYT
         ng1xqiKTA6VBjP5sflzuhHD7UVlbRx95oS65BGJXonyVjVdK/CYQjKTzJM8nYNhku2mD
         OiDeLSD7oo3+SB6ExWOXRJQ0fBkDGdeqyliCpsbaB/eKm8jfRHJTZsKjRGF9TKFY/kAK
         39VA==
X-Gm-Message-State: AOJu0YzneK1XdnOveY436R0PXEKR62/fhA5LmSWRCvOz1AWYlyFibcd+
	pY0Z4/erBWEnPMePA63QpI/o7g==
X-Google-Smtp-Source: AGHT+IFz/RgqhQtMH84fS24lpX7KlAytok+eBN0G5pG+ICsu/QO/kQIYfol+2t8xBzIkDd965GyXBg==
X-Received: by 2002:a05:600c:1e05:b0:40c:a5d:860d with SMTP id ay5-20020a05600c1e0500b0040c0a5d860dmr1332476wmb.169.1701937482274;
        Thu, 07 Dec 2023 00:24:42 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b004083729fc14sm1144817wmq.20.2023.12.07.00.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 00:24:41 -0800 (PST)
Message-ID: <857491d6-6360-4ed2-b38c-0477b75b19f7@linaro.org>
Date: Thu, 7 Dec 2023 09:24:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: interrupt-controller:
 loongson,liointc: Fix dtbs_check warning for reg-names
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, devicetree@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, lvjianmin@loongson.cn,
 WANG Xuerui <git@xen0n.name>, loongarch@lists.linux.dev,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <cover.1701933946.git.zhoubinbin@loongson.cn>
 <fde4d43ab25ad2a936c1b50ab7ed292345fcd32c.1701933946.git.zhoubinbin@loongson.cn>
 <0c1211e5-95a0-4caf-bc59-4a453fcf011a@linaro.org>
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
In-Reply-To: <0c1211e5-95a0-4caf-bc59-4a453fcf011a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/12/2023 09:23, Krzysztof Kozlowski wrote:
> On 07/12/2023 08:29, Binbin Zhou wrote:
>> As we know, the Loongson-2K0500 is a single-core CPU, and the
>> core1-related register (isr1) does not exist. So "reg" and "reg-names"
>> should be set to "minItems 2"(main nad isr0).
>>
>> This fixes dtbs_check warning:
>>
>> DTC_CHK arch/loongarch/boot/dts/loongson-2k0500-ref.dtb
>> arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: reg-names: ['main', 'isr0'] is too short
>>         From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
>> arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: Unevaluated properties are not allowed ('reg-names' was unexpected)
>>         From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
>> arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: reg: [[0, 534844416, 0, 64], [0, 534843456, 0, 8]] is too short
>>         From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
>> arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11440: reg-names: ['main', 'isr0'] is too short
>>         From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
>>
>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
>> Acked-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
>> Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Where? Point me to exact email on lore.
> 

Ah, I see at v4, it's ok:
https://lore.kernel.org/all/170015648721.2522214.13442341316883618917.robh@kernel.org/

Best regards,
Krzysztof


