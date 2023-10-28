Return-Path: <devicetree+bounces-12588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7570C7DA5F5
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 10:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BC051C20ED8
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 08:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA7463A1;
	Sat, 28 Oct 2023 08:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uVWVDOqH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD5F20FD
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 08:50:11 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E51810A
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 01:50:09 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5079f9675c6so4360987e87.2
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 01:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698483007; x=1699087807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TkHcnxPZFv7nNBppZiUhrfJVZ+bIOdVh9CHITgs4Qpw=;
        b=uVWVDOqHmnZav2BNXUQAAA1kZB0F3XqVcnDXMiff5kxHefac5XMIMkqg6sBKa0CclA
         V2TMeGQinaSXzLsUnezU1CDUrMe3KM/OaRKCj7fQka6M65CW6zjhNpKJAdy0VhLma7xS
         0jSzVt9/Nx2+hvK6pUd2/5nxczD1ufG0nNFK7Zx1ToicNsm9jijGxLZ8ApyVgtUdWCWZ
         FXLFRAgew3o6pSKuw92tKr7kH4L2fMnudcpRCPr54H2kmkwBfuwE9VsZcULH8CHWDQQ0
         9+91O8dXTsJTQOC8MTV/yOOc3uOvJ9FH5yRgxUHABH8K47l0fZp8oNx2YZQFpq3/9Ja0
         urkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698483007; x=1699087807;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TkHcnxPZFv7nNBppZiUhrfJVZ+bIOdVh9CHITgs4Qpw=;
        b=dNotFMus7ZFC4G/A6DHrgS3dyC1+GODNuKFhuXPvJtPYKK36rdgBSv2h5VjB8vEPX2
         Z1SNbgDzOHF2ICRlR5FWR/RGDwoZt5YLlIaK6O1swVTPyN84/KZ/HA1GTN7JGEYUMsDP
         MP03CM0skOXvdU7wrjgaGS69JwVkvuSwTEsDQfWH2AoocxCNPvrvjWZHSoxD0K4Thq4J
         Gl4XGsR5caGsRzXFzu5IqkX8jR0GnCXlIRlBlAZRhmr1EPKGLInkpyDV3LWmfKVtkz2L
         byUXuYcgu//3iZ+Z3jbnmm6wAqncszGUu6VgwGPXsn1UdJgqYo9hbsjA/BqIUEPS34Og
         T/cA==
X-Gm-Message-State: AOJu0Yxtlf9NUi8VaWFFGJwojgO3obmF/cZAis1qurhe8ZjqqhLjCsu/
	S1WPRcfg+T3uYXfxfwHeWDgdkw==
X-Google-Smtp-Source: AGHT+IEoDW/yWN9xs6blco7LmI8JA0P+EkkH6ex5M5TJVdVdu9aqxoTY3TRi6brYscdGlapiO35nZQ==
X-Received: by 2002:a05:6512:3b89:b0:503:36cb:5438 with SMTP id g9-20020a0565123b8900b0050336cb5438mr4186853lfv.21.1698483007585;
        Sat, 28 Oct 2023 01:50:07 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id w7-20020ac24427000000b00507aced147esm576566lfl.203.2023.10.28.01.50.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 01:50:07 -0700 (PDT)
Message-ID: <b394c70f-abb5-4ee6-82c1-76fcb290cca4@linaro.org>
Date: Sat, 28 Oct 2023 10:50:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: touchscreen: Add Novatek NT519XX series
 bindings
Content-Language: en-US
To: Wei-Shih Lin <frank101417@gmail.com>, dmitry.torokhov@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025082054.1190-1-Weishih_Lin@novatek.com.tw>
 <20231025082054.1190-2-Weishih_Lin@novatek.com.tw>
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
In-Reply-To: <20231025082054.1190-2-Weishih_Lin@novatek.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/2023 10:20, Wei-Shih Lin wrote:
> This patch adds device tree bindings for Novatek NT519XX series
> touchscreen devices.
> 
> Signed-off-by: Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
> ---
>  .../input/touchscreen/novatek,nt519xx.yaml    | 60 +++++++++++++++++++
>  MAINTAINERS                                   |  9 +++
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
> new file mode 100644
> index 000000000000..00912e265197
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/touchscreen/novatek,nt519xx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Novatek nt519xx touchscreen controller bindings

Except that it was never tested...

> +
> +maintainers:
> +  - Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
> +  - Leo LS Chang <Leo_LS_Chang@novatek.com.tw>
> +
> +allOf:
> +  - $ref: touchscreen.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - novatek,NVT-ts

That's not a real compatible. Nope. Open existing code to find examples.

> +
> +  reg:
> +    maxItems: 1
> +
> +  novatek,irq-gpio:

No drop. Use interrupts

> +    maxItems: 1
> +
> +  novatek,reset-gpio:
> +    maxItems: 1

Really, please start from scratch from existing, recent bindings. This
must be generic reset-gpios.

> +
> +  touchscreen-size-x: true
> +  touchscreen-size-y: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - novatek,irq-gpio
> +  - novatek,reset-gpio
> +  - touchscreen-size-x
> +  - touchscreen-size-y
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +      novatek@62 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation




Best regards,
Krzysztof


