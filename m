Return-Path: <devicetree+bounces-32201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 635E182E9FA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 08:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED5B9284BF8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 07:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B05610A3B;
	Tue, 16 Jan 2024 07:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YwU9CR13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D0210A24
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 07:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50ea8fbf261so11176267e87.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 23:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705389886; x=1705994686; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QmuNQYYSxRr/CS/I56kykdOCBdz6OEQC10FmQ1EeQhc=;
        b=YwU9CR13+KGWIiAkT6dEtU0z5dPvkJrHRrMgPLDQie0eesjclidp6b7BNG8kBz/Hmr
         efME5ehG940CFmrFQL+FkMPDSTI7gWElFlHK6VhCD+mRWiU1ShG9ykKJ6CpMs24+d6FM
         sqISTDMx9p43/HKw3Qs8e/Q6DaxDHKkbr4efQpYQexyUDnflLdG0ujlMNNUeRuZAb6et
         uarAFI4/3zuq7FF8khhx8tLBd6kOT/kuDJ95pJCJnebS+VjU0dr0pO9Fi29PstOoyEYN
         AtnegECgRgr9GdWGoM9Fq9pN1kl3LIw+EchQja0OZaApxl8CSBwocc0duuB44a3cOcck
         buag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705389886; x=1705994686;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QmuNQYYSxRr/CS/I56kykdOCBdz6OEQC10FmQ1EeQhc=;
        b=nLHvqRCMjvB1sjmvoG2jAdsBZ3o87Qnp/kNJhpzptOKScgnGalxx3tdoM1Czo3oWM8
         CP/euABprDEf/fW8zt/9T4zfqRDtKWk95rvMZ6M+iCtdflUkruGNioAQVf9zdOg/IEp0
         tjeN6EX0KipM9USkoJzcT1W0hh3qqspkxAxzgWA9FALhTjzmqYddIVQuCZMy7g7ZjC+t
         3oVqrduUPJMypGIpJxWuue+ISrojxkKmLp1+7JNxiw9ZvygzkvUrr2Vl01m5/cOVn2V0
         aBUpVnD8bEPl2ohgKHqv9LLnN5gDaAlxPSc5BWZqxsUXVSItIWd64pON0higPVtuzK9Y
         kCwA==
X-Gm-Message-State: AOJu0Yz/SCtggVeIUgEjASC4MirV37Q3OxUssUQKWN8Dw5RIMaPhlsDo
	ueuO4Ag9luQwhZTRh6N+HKjcdB5pUjYD0w==
X-Google-Smtp-Source: AGHT+IHo/uu1hzJDpzHccNQb1Ziup25P9UjfC6TNi547r4ligiqKnJdY8c8q7eyttgP5SakChtGebA==
X-Received: by 2002:a05:6512:1247:b0:50e:7be0:3c38 with SMTP id fb7-20020a056512124700b0050e7be03c38mr3701566lfb.98.1705389885808;
        Mon, 15 Jan 2024 23:24:45 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id cw1-20020a170907160100b00a2dae4e408bsm2554928ejd.15.2024.01.15.23.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jan 2024 23:24:45 -0800 (PST)
Message-ID: <3dfe868d-ff8d-44ac-a68e-066ac42a6705@linaro.org>
Date: Tue, 16 Jan 2024 08:24:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, KyuHyuk Lee <lee@kyuhyuk.kr>,
 Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 Andy Yan <andyshrk@163.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
 <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
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
In-Reply-To: <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 16/01/2024 03:00, Tim Lunn wrote:
> 
> On 1/16/24 01:58, Krzysztof Kozlowski wrote:
>> On 15/01/2024 15:51, KyuHyuk Lee wrote:
>>> The vendor in ODROID-M1 is hardkernel, but it was incorrectly written
>>> as rockchip. Fixed the vendor prefix correctly.
>>>
>>> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
>>> ---
>>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> You need to start testing your patches. Your last M1 fails as well in
>> multiple places.
>>
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check W=1` (see
>> Documentation/devicetree/bindings/writing-schema.rst or
>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>> for instructions).
>>
>> The DTS change will break the users, so would be nice to mention this in
>> its commit msg.
> 
> I notice there are a couple of other boards that incorrectly use 
> rockchip as the vendor also:
> 
>            - const: rockchip,rk3399-orangepi
>            - const: rockchip,rk3568-bpi-r2pro
> 
> Perhaps these should also be fixed at the same time?

What is happening with rockchip boards?

Best regards,
Krzysztof


