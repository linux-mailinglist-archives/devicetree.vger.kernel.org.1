Return-Path: <devicetree+bounces-53368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989A88C0E3
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DBAE1C3BCA2
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C87F7175B;
	Tue, 26 Mar 2024 11:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q+S58jjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F4823C1
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711452892; cv=none; b=U3qeO41NQu/pO2gWfu6uOqraV6mi8GLe4AoVsUdNF71lfqAOb3dbUZjZ5qR2X1TacB2l0n9bB0/LneMEmQ7K/sIE8HbOtK5GJCyyrcBo/ahoWfVjOt/dznhIPbohdgPBDASZ16+TdYYreBQDkLENtAnIM6a38r8AUDpnz8442/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711452892; c=relaxed/simple;
	bh=wggRToh3IeebgCZ2ZO7Z2inMA67OhtzJVJ67SOD39tw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bd9zvt8CSNmXIefmAFjbgZrgFiTmuApzed/CxZVwBa6jzyFFPkBXyrni/pJaf0d8tNzLTNG6+GzahiN1TV4mdlgJ8oQ115lzJpOT1J2ZggJ/xnds+f3Kj38CFEgVwXmy+7hTOcZVT0MBPGtvhQZC5MzgZhBveSTR/m/TxvzGynE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q+S58jjj; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so704512166b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 04:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711452888; x=1712057688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6SOvBV2rkuEK/1pWb/3FcBsKdMaUR8Q4He7kwB7kUHc=;
        b=Q+S58jjjGyHTYCHWvFllY7mfeeRMqnNs8deJLFX7YWJGujxFhV+zeCUHDOmQd2LLjP
         iWHKfLwR95Egh4xWI58FbHrKGIXIFpKzxqGxIVtY/V9Se4RqzZEx/0tLk7JfaA7MmnNf
         lrZ3yWCJBd/RxzpHMKmP6oc8y3gZWk4/nUX/wfWJtc5DroaUH54pya6J/UXFDbdmrTm0
         w2rRFIrxcNOlrp6ciuyNzG2Nd6GwPoNbktjO4ATiCAesWA4kfF0Rm6wxE0G3kkU+KWI0
         64pGCzGeEojWlDaZSFuCjD6nscR7HOXG3UQrZ2/BaxakBEMefpAdTgYGcEiNgtyYw8ZE
         X2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711452888; x=1712057688;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6SOvBV2rkuEK/1pWb/3FcBsKdMaUR8Q4He7kwB7kUHc=;
        b=cAYt/5j3Ej87lDnmwdI3m/5OnLt8EBnWGIU/ha3UoConn52PUK4lAPftWVDxIO5c+k
         w6uKXxwCFcfCI1aw+fzzItPrnMmg54W2mq85PgZTKjUGr17C3oa8vYEi+7RUtoy1kDwH
         if9RZ6j+nT5IjoSWE7EELA1VQf9IA4y/9Q93RtcbkTxAXjNIaUYC8/DJN/wezlOyHjeD
         pM1XULTmDxmCxH7NAFgpyrPnXNWMFaJmlQ4FkSrsue4DWw5/1J8mv8U2CgpSGd6mQ1Wl
         pooeSeTTR4c0CzymdIzP4jg8GwBMztRDXSYvNTnvBYkkvJ0bnW/HXnKbzNgBPuD+kvoH
         RmHQ==
X-Forwarded-Encrypted: i=1; AJvYcCU31XJGUquTlGIwT3JzDWJZRypbWy2EV5mriR/ZxRveb3zGqDtAGGqYP58xFkbmL+lH3bTVPKDvG/KKpQqtHJXc6UD/Hi4M37cnYQ==
X-Gm-Message-State: AOJu0YyZaSn6BRYRWFbCgwf+ZGgqqAunsGJ4yYbgyxPBsNWqz5KIz90w
	DFixnnNPlgOKnb3pHqCJhdgld0tHN16GpGZ5l2S+zJNoWuAzUzUi2cxJxlP4h1I=
X-Google-Smtp-Source: AGHT+IHEESHJLqASda3TdzCDto6qSzNyfs91i2ayivgFp/zSLDAFl48auuOq3SeY9yJX6mCdObVpQA==
X-Received: by 2002:a17:906:3b58:b0:a45:ad29:725c with SMTP id h24-20020a1709063b5800b00a45ad29725cmr6522529ejf.62.1711452888531;
        Tue, 26 Mar 2024 04:34:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id x15-20020a1709060a4f00b00a455519bcb3sm4152152ejf.55.2024.03.26.04.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 04:34:48 -0700 (PDT)
Message-ID: <5959c75f-42e0-40c2-a5f5-2725e35912f5@linaro.org>
Date: Tue, 26 Mar 2024 12:34:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: serial: actions,owl-uart: convert to
 dtschema
To: Kanak Shilledar <kanakshilledar@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 Kanak Shilledar <kanakshilledar111@protonmail.com>
References: <bf26ee6a-50e6-4cfd-ba5d-2772a9e6a176@linaro.org>
 <20240326110506.78408-1-kanakshilledar@gmail.com>
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
In-Reply-To: <20240326110506.78408-1-kanakshilledar@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 12:05, Kanak Shilledar wrote:
> From: Kanak Shilledar <kanakshilledar111@protonmail.com>
> 
> Convert the Actions Semi Owl UART to newer DT schema.
> Created DT schema based on the .txt file which had
> `compatible`, `reg`, `clocks` and `interrupts` as the

That's not true. Old binding file did not have clocks. You did more than
conversion and I asked you to describe changes which are different than
pure conversion.

Instead of sending another version the same day, can you please read
carefully comments you receive?

> required properties. This binding is used by Actions S500, S700
> and S900 SoC. S700 and S900 use the same UART compatible string.
> Implemented a full node example for the UART, referenced S500 SoC
> devicetree include.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Drop, you made MANY MORE changes than I asked, up to the point of making
it broken.

I don't understand. I asked three things. One you ignored, two
implemented and then added more.

> Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
> ---


...


> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks

That's surprising. Nothing in the changelog explains this.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/actions,s500-cmu.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    uart0: serial@b0126000 {
> +        compatible = "actions,s500-uart", "actions,owl-uart";
> +        reg = <0xb0126000 0x1000>;
> +        clocks = <&cmu CLK_UART0>;
> +        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +        status = "disabled";

NAK.

Examples are not disabled.

Best regards,
Krzysztof


