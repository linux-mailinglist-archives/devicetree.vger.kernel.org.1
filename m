Return-Path: <devicetree+bounces-8437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC8C7C8313
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A1CDB209EB
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D977492;
	Fri, 13 Oct 2023 10:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kpSVOt3b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B17134AD
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:31:36 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EB42E5
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:31:34 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-405505b07dfso19740445e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697193093; x=1697797893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bZib/y+pr82Tu+ZBVYrjuveVtpzqqZEyow6DlcOcak4=;
        b=kpSVOt3bScESMQUGSMZzEKqOWnQDIb5lH+q53Hp4bAlIx1cfDh92zlpTRyTabPI8G1
         KCR5/Ku3w3pgkrLCAqqF81npsv+QIHIlA7dXAgDhMPD+OnoS64pskcGfYR/tuVqYlyG5
         z8nBW6f0R1OuFmLaX/1wyNiWX2I4+DJrj4VBjkwmqHd5txeIDczY/BhwuzhWN15R5FzY
         ZfMwM32DU/auc4VPgLfZwO0dZKBZ8sw3gbIOtbyB65DCvVzhOkBzTi8Wq/NAwv491PHY
         rzC1MUcXe7CHGvS4qIJbHcjHz7pGc5liOvYFIr62i/ChghKX+J9BPHA9ByqL6E+Cw6lR
         CG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697193093; x=1697797893;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bZib/y+pr82Tu+ZBVYrjuveVtpzqqZEyow6DlcOcak4=;
        b=sEzv8WXcSAhGcY5FnamxGDB3EkI+vlHXvs2Yg04kut5z57hRoc0js3MR/Rn22hKB0a
         U36chRDDX1ol7wLWLEQnoAyG3RCwVpDefqv8MoR6LIKVQn0RRoTV8+iPWHpLwWuTkEAf
         rGp0djElPOdqd0ZLm/EtvSVH2x40lKJMKoLdPVujVYnSu14ZLuofG595sEBJq+urs8ze
         u0YvY+Mi9WmdQ8NPdP61iySX72MLiklQ2wfImxM2ivtEP9QY1CvyU6+t7jJJKQe/RA3/
         6fWueLj3xYY/AXzO1aFs/kdsrOVL8PcSRjKJTLZV2vsRl8TT7m9I+fMwkkEBEDZWCi2T
         xjjw==
X-Gm-Message-State: AOJu0YxXLuz+T45wcZagYqg5ZgCocuX7717+g2UtxdvGeh2ZapBUG0h0
	M1bXW9WXLUlwUKy9zngbSOIo+g==
X-Google-Smtp-Source: AGHT+IH56sajs2ZwEHgZ3z5+0kN2NgzQTZq9isFQXaW1N6vrJw3HooZTEOKbc6cd6034q54c1mAi9w==
X-Received: by 2002:a7b:c4cc:0:b0:402:f91e:df80 with SMTP id g12-20020a7bc4cc000000b00402f91edf80mr19554727wmk.3.1697193092443;
        Fri, 13 Oct 2023 03:31:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id t9-20020a05600001c900b0032179c4a46dsm20484740wrx.100.2023.10.13.03.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 03:31:31 -0700 (PDT)
Message-ID: <42638b0a-2007-4c50-8046-6dfc33e45441@linaro.org>
Date: Fri, 13 Oct 2023 12:31:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: nvmem: Add nodes for ZynqMP efuses
Content-Language: en-US
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
References: <20231013101450.573-1-praveen.teja.kundanala@amd.com>
 <20231013101450.573-4-praveen.teja.kundanala@amd.com>
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
In-Reply-To: <20231013101450.573-4-praveen.teja.kundanala@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 13/10/2023 12:14, Praveen Teja Kundanala wrote:
> Added nodes for ZynqMP specific purpose and PUF user efuses

Why?

> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>  .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     | 213 +++++++++++++++++-
>  1 file changed, 212 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> index e03ed8c32537..d2a036a80cda 100644
> --- a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> @@ -8,7 +8,7 @@ title: Zynq UltraScale+ MPSoC Non Volatile Memory interface
>  
>  description: |
>      The ZynqMP MPSoC provides access to the hardware related data
> -    like SOC revision, IDCODE.
> +    like SOC revision, IDCODE and specific purpose efuses.
>  
>  maintainers:
>    - Kalyani Akula <kalyani.akula@amd.com>
> @@ -43,6 +43,140 @@ patternProperties:
>      required:
>        - reg
>  
> +  "^efuse_dna@c$":

No, no underscores in node names. From where did you get this pattern?
Which upstream code has it?

All this and further parts are questionable. I don't understand why do
you do it.

Best regards,
Krzysztof


