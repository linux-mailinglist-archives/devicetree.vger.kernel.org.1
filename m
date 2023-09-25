Return-Path: <devicetree+bounces-3151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4F57AD7DE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2B0CE2813D8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1F31B278;
	Mon, 25 Sep 2023 12:20:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9C315EB3
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:20:50 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84FB106
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:20:49 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40594697600so11182585e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695644448; x=1696249248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XElFAjDPOihAnQK2naTn+nDV4JnEanGuFAa+Qt4yd3Y=;
        b=j67cN3EndlA4nWIAlcGTlg1SplYk6AryJ3syJwdi5Hhf/e//D7Orpyxkf4GNsJGhfd
         CtmXkfnQJT5C1cPwsdOysPniKXh51sXBXxdPBgycvTrHH8c982PygrAvWEw4hVDofDYm
         No6OBU9PcDOTpFJtjlWdatT0DZoimE+tdfneWhueAWTDD3iMac6T583V6l3ReIo8iIo8
         XnmCDukAsSZTXMGu0GYnImkbe56MYFh/sKeHrDhKqkWhD47rMK9jJCHRocbavmv66Pv2
         x0AKUAG+rA6UK5CrfHPm4AXp+3SJf05zai8ikoDQmCIzrNkvkyuWpa02hFUF0jhA7ZLs
         VzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695644448; x=1696249248;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XElFAjDPOihAnQK2naTn+nDV4JnEanGuFAa+Qt4yd3Y=;
        b=uovspHLlyYTDSuoqjt/vhRhzveyWC4G2ZJ6gzwSieAGLf+6XVSlzdzIjugnJf4H2up
         9hyfa1NU7q9+bqi2uraR0eyqpUb7BIvyWZO/ah2GRSpf96vyNNfkw/FLiESVfmp6IaEg
         yMuHJUDi3bTjUz075lLdFCceAt0vjkTv3Jt9Dyx8pLJSAj31naz/hyv/b3CqT5nP6HJ0
         MEfKuQFg9c9FCQoXzVBqhPOfAVkPMs1zXOu9GrG5cuhJVcRp1AELvRC0bLEstyxByLea
         LcNe/OV/MKOdZAj9CaeB1PIhPMfk7yfGIKD0e3q8DPWD084XY7DcTOMnisZQ2Y+1jmIl
         +Mew==
X-Gm-Message-State: AOJu0Ywk7nTDxTL62bHrT90WlgUmRhonfcOOeCEJGjZw+kezZKriv7/+
	vywys+ZJfo4u5iKsZ8LL2pDe5g==
X-Google-Smtp-Source: AGHT+IFkoFCucmVkfw9HyQi1WbdBYLwMca/hgHtQuHa51zs1zxp0R4dVoo6uX3iKpZipeOrcpKLoZQ==
X-Received: by 2002:a05:600c:ac4:b0:401:bcb4:f133 with SMTP id c4-20020a05600c0ac400b00401bcb4f133mr6113662wmr.22.1695644448084;
        Mon, 25 Sep 2023 05:20:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id e20-20020a05600c219400b003fe1c332810sm14911270wme.33.2023.09.25.05.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 05:20:47 -0700 (PDT)
Message-ID: <6c38e9bc-f71a-453f-b314-cff55e4f990e@linaro.org>
Date: Mon, 25 Sep 2023 14:20:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: gpio: fsl-imx-gpio: Document imx25 and
 imx27
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, linus.walleij@linaro.org
Cc: brgl@bgdev.pl, andy@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20230925111906.926031-1-festevam@gmail.com>
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
In-Reply-To: <20230925111906.926031-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25/09/2023 13:19, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> fsl,imx25-gpio and fsl,imx27-gpio are not documented, causing schema
> warnings.
> 
> fsl,imx25-gpio is compatible with fsl,imx35-gpio and fsl,imx27-gpio
> is compatible with fsl,imx21-gpio.
> 
> Document them accordingly.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Sorted by fallback compatible. (Krzysztof)
> 
>  Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> index d0ca2af89f1e..f73381cec2d8 100644
> --- a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> @@ -21,6 +21,14 @@ properties:
>        - items:
>            - const: fsl,imx35-gpio
>            - const: fsl,imx31-gpio
> +      - items:
> +          - enum:
> +              - fsl,imx27-gpio
> +          - const: fsl,imx21-gpio

31 (from above) should be after 21.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


