Return-Path: <devicetree+bounces-15056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7FB7E834B
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 21:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F41B280FFB
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 20:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64D83B2BD;
	Fri, 10 Nov 2023 20:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k0JlIbgf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333F73AC0C
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 20:00:31 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C960AC7
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 12:00:29 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9d2c54482fbso393097266b.2
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 12:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699646428; x=1700251228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:cc:references:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6wLl3TQiE//Hykecbrp7H3QwA1yHbZyFV7FnauhpUkA=;
        b=k0JlIbgfg2V688dLXeZgVtm+DY3K2oby/5Y5lsfzEsZd1o3RbbFzhpRc8Iz1LnpaBn
         pwJe3cVnstf8yYYbJ4eSDWWsX3Ht1mfJUqUytiDaBcg0y7XBiaOWk8SdvmSFcvAjt7ex
         5xqsYc1NrXm0KikrhgiKtN6tHA7fSFPY1kdT36kOXPmAS3ZdqD1tm1blq6E76CElHz+k
         cQPTzg3xITrvAxLLC9cluhQ090+acJZ54l454K2323mYhoSHcApQGSCFJ3tJw2O37/7i
         XbV6gWqy351dfpOJnVOZwzEbNgkiFv9H+i81+hwessBgRKkDeB5zqqKuWueFLM2/6Lc5
         wE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699646428; x=1700251228;
        h=content-transfer-encoding:in-reply-to:autocrypt:cc:references:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6wLl3TQiE//Hykecbrp7H3QwA1yHbZyFV7FnauhpUkA=;
        b=RHXMxCWfeXDCfjLzLpTxl0k8XmvCXJ3EemkqY1VzhFt2NL13lIqUKS3+IpncWACU2d
         1IVuVTxNoy0YlsSMWkpYyMWrFShzIHcA8lRb/9ClfMUYnmIxd86gS3Vtvzw3KpJtRn3z
         F5bYXsXrjqTu72nVKim2xOJc4JoZJEpNpf0lPVc/o+kQj5KOpdtzdhPuUakK5QyGcnQz
         Ho3UArY99gj+a6xL7BK2IO249lt9WvqWqhaCr5PWwUlWhwuuv4HPKYWZsUirI6TF/rq4
         JPcJY4OSCsS8AURmTtzeL1GEk5D8bWq/Zn6p9ERHbTHGiTrtf1n97uI0sCYL8JMSU+zP
         5lNg==
X-Gm-Message-State: AOJu0YwFmmyQn4gdE6cokYHOadfUw9K/0F0kg19F4PxIQPWKspFy14Xk
	HNmklUjsZXAtS7JtMWVMCerAUg==
X-Google-Smtp-Source: AGHT+IEkiQDe5VrZ5xgHcNkqmVmqmyiGUOr8kMleEv485q+KiilU63izA8vmx97wQcEaI+IGGnHJdA==
X-Received: by 2002:a17:906:24d4:b0:9dd:902a:797d with SMTP id f20-20020a17090624d400b009dd902a797dmr33122ejb.1.1699646428198;
        Fri, 10 Nov 2023 12:00:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id u7-20020a1709063b8700b009b9a1714524sm25127ejf.12.2023.11.10.12.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 12:00:27 -0800 (PST)
Message-ID: <49cd75fd-962f-417c-9196-3c9edd42e4d5@linaro.org>
Date: Fri, 10 Nov 2023 21:00:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: mediatek,mtk-wdt: add MT7988
 watchdog and toprgu
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Golle <daniel@makrotopia.org>
References: <6912f6f406bc45674020681184f3eeca2f2cb63f.1699576174.git.daniel@makrotopia.org>
 <59629ec1-cc0c-4c5a-87cc-ea30d64ec191@linaro.org>
 <fc52c1df-e414-49a9-a3a7-7a4ce45c403e@linaro.org>
Cc: devicetree@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-watchdog@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
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
In-Reply-To: <fc52c1df-e414-49a9-a3a7-7a4ce45c403e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/11/2023 16:20, Krzysztof Kozlowski wrote:
> On 10/11/2023 09:09, Krzysztof Kozlowski wrote:
>> On 10/11/2023 01:30, Daniel Golle wrote:
>>> Add binding description for mediatek,mt7988-wdt.
>>>
>>> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
>>> ---
>>
>> ...
>>
>>> diff --git a/include/dt-bindings/reset/mediatek,mt7988-resets.h b/include/dt-bindings/reset/mediatek,mt7988-resets.h
>>> new file mode 100644
>>> index 0000000000000..fa7c937505e08
>>> --- /dev/null
>>> +++ b/include/dt-bindings/reset/mediatek,mt7988-resets.h
>>> @@ -0,0 +1,12 @@
>>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>> +
>>> +/* TOPRGU resets */
>>> +#define MT7988_TOPRGU_SGMII0_GRST		1
>>> +#define MT7988_TOPRGU_SGMII1_GRST		2
>>> +#define MT7988_TOPRGU_XFI0_GRST			12
>>> +#define MT7988_TOPRGU_XFI1_GRST			13
>>> +#define MT7988_TOPRGU_XFI_PEXTP0_GRST		14
>>> +#define MT7988_TOPRGU_XFI_PEXTP1_GRST		15
>>> +#define MT7988_TOPRGU_XFI_PLL_GRST		16
>>
>> IDs should start from 0 or 1 and increment by 1. If these are not IDs,
>> then you do not need them in the bindings.
>>
>> Where is the driver change using these IDs?
> 
> You nicely skipped my email and keep pushing the idea of putting this
> into separate patch.
> 
> No. Respond to received comments.
> 
>>
>>> +
>>> +#define MT7988_TOPRGU_SW_RST_NUM		24
>>
>> Why 24? I see 7. Why having it in the bindings in the first place.
>>
>> It's quite likely I asked the same question about other bindings for
>> Mediatek. I will be asking every time till this is fixed.
> 
> No response to this, either.

You still did not respond here. To none of the points here. It's my
third ping because I want this to be resolved. But ignoring my emails,
and skipping paragraphs of my replies will not lead anywhere.

Best regards,
Krzysztof


