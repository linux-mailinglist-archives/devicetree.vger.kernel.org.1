Return-Path: <devicetree+bounces-42966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5723C858E28
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 09:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15A8D282EB6
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 08:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230021CF98;
	Sat, 17 Feb 2024 08:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cQRISeKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B81CD20
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 08:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708159442; cv=none; b=d3e9oIWEr4va/3P8njxSs9omBO23IM8Zie5MlNAVqbPIIdfvcaJko4PLm3VcuV9O4HphPHcY/+/kTHUwqr+QQI6dw6LsyZp1VaTS0rUgvpVn3k0UZ9US7kXfHcynL3L78qEjkJGm6gtGdC9z7Mts1I425zyOVrOr9jMvysczbGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708159442; c=relaxed/simple;
	bh=y+YSBzYZNMr51u741hvG+3ZL/r5afgPU1ePtiyD2pQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IlrqB4NZ/aJFEBK4gwNkcWR/ELHMmgJ4mTapekUnIi81izswe/ZFLeQWiKofGShyu40L8gthpqHsQqG3WVGZldES4t4YU2Xp59/rEZHesAIoypCzPpADjAvDRYCgQnSPTdy6rQz6+u0UqqB+bpW78WFMNGSKw3+MTpciUY5IIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cQRISeKG; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a36126ee41eso375035466b.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 00:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708159438; x=1708764238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dFBAoUvpPGPsM8bhgOym5bFaYLo7MDtNTW5PcAQ8U1w=;
        b=cQRISeKG2FOs/eqJhh7plEJkmcC1nftmJm7j/vwh1boRlPbK9/TmkiOZzQ8C9xBNYG
         v1Ftc2MJ5FRou7NLEaGd1PPJwULnYsTdfJl6CJBFxShLM8w1QbhFoLrtadu7JxWuRiTM
         JZvDoKkQ98mBTU3v+Rpg4GpnNq2yINtGtEU/zMjFQJT6Al7XYFZUqwK1fSSSFb25dR2P
         X3EJSGH8R32zU6vReC4SJLqqhsnHJsMuPctJ72NIRre6AZ4IIS7UB3FlqXT6ee4/awDy
         qqjhe3Qv3xd7UdRHGDnHNqxykPQYe3PXrfz2CsptyU/+SxLQIto79/YS9Mts0tHoH29T
         8Ivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708159438; x=1708764238;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dFBAoUvpPGPsM8bhgOym5bFaYLo7MDtNTW5PcAQ8U1w=;
        b=kC0jcNrIQUUxpp+8Ms0te9L0w2pjasQHoPgtwIFgEDDCaBO4RZs2WmL+Wr9MksSlHJ
         uyhHrD++NvXjWhsK8YVJNwiH5QIuSYe4QEAsMUaNmSVtOtjDE/MtPoyhTwRoGIitt9Kg
         bYGwxVMOgCL4v89g+o1SKBWOPhlcrS8CH9XqPUEA1Vv6l8LcTTy8m9WFv5YwHEByB9AT
         e9as9VlcmO/KjPCmNIf4VdvwFwMFGF78oWQYME+JS9pBYxwKPqhdeEO7brNa6prUBBOo
         z9WFJ6tKbkKUT7uI4lsK9EcpEOPXpLKkr6arH2pN/rJpgQ1EXJooCZj75E5lmP8Tou0c
         gLFw==
X-Forwarded-Encrypted: i=1; AJvYcCXIEu53l9AGqWyhICHHaDA1XgDDH24jheSgiS/99M6dkN+QSG6Fb66MLyw4/6jPWfTynlGpA8SXQePqUdGzBHDn0/93D3q3Y7akTA==
X-Gm-Message-State: AOJu0YxtJuGq8+pCGcvEf8ThklQFRfiEgO6RaB4Gdv6GhOE3uxBJEfWt
	T5hlg0i2xjje87V6E0OKi8cQD/AqJHarCm73jbKFRK3iD8hKCE3ttXsRDL38X8k=
X-Google-Smtp-Source: AGHT+IFYQC4ED/5MaRw7neh3063ZL9eDJJTP1IWWz3Cx8ikOFZ9wwzV2gwGKrQR/xRFmddJ/7bl71g==
X-Received: by 2002:a17:906:b0d1:b0:a3d:4ed8:f5bf with SMTP id bk17-20020a170906b0d100b00a3d4ed8f5bfmr5407527ejb.2.1708159438615;
        Sat, 17 Feb 2024 00:43:58 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id vu2-20020a170907a64200b00a3d2e690abfsm776923ejc.122.2024.02.17.00.43.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 00:43:58 -0800 (PST)
Message-ID: <e8ca42c6-4789-4553-a748-0e6708c44f5e@linaro.org>
Date: Sat, 17 Feb 2024 09:43:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-binding: watchdog: arm,sp805: document the reset
 signal
Content-Language: en-US
To: forbidden405@outlook.com, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>
Cc: linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240217-hisi-wdt-v1-0-cdb9ddcab968@outlook.com>
 <20240217-hisi-wdt-v1-2-cdb9ddcab968@outlook.com>
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
In-Reply-To: <20240217-hisi-wdt-v1-2-cdb9ddcab968@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/02/2024 05:40, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> The reset signal needs to be deasserted before operation of sp805
> module. Document in the binding.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

It's dt-bindings

> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  Documentation/devicetree/bindings/watchdog/arm,sp805.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/arm,sp805.yaml b/Documentation/devicetree/bindings/watchdog/arm,sp805.yaml
> index 7aea255b301b..6d4f63f23f1a 100644
> --- a/Documentation/devicetree/bindings/watchdog/arm,sp805.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/arm,sp805.yaml
> @@ -50,6 +50,11 @@ properties:
>        - const: wdog_clk
>        - const: apb_pclk
>  
> +  resets:
> +    maxItems: 1
> +    description: |

Do not need '|' unless you need to preserve formatting.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


