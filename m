Return-Path: <devicetree+bounces-76913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C955A90C831
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:02:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95F8C1C22A9B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAA7205E17;
	Tue, 18 Jun 2024 09:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NF3bGn28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9941E15821A
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718703592; cv=none; b=Xjw3FInpZlYzG4TtZik2FJpuRoxDuEL05TgrjjZW15rqeQ0GDuA2Z60UaOoX7e0n8wDZbJvpxlVT+EDos/Lkr287mlv1xHC4D4vzfwBflTBZWP8h6coK7lSxT/ehte3b7QfZ4mW3sRNiL19lhkyLfzsA4yt7qcMlY0ckbzk7P5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718703592; c=relaxed/simple;
	bh=zerNUBbbfzHJenHr/SN3LbkjQWhye2rIWAeV8ZvfACo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YLaLL7WRFp4TbOpoAFaErtfGUe8KxDFd8uEn4uToBL6L12NTEx0qZUuZAXHYvrsFUWeUAf8PeAU9Au3T4woGzO222q0XfBw6djTeL7f18cbEn5lVJUNuXf+m5mFQ11KAcLrlOQkayJEsLBOH53VYQ8rn8HNhJcjK8f25XoV1qus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NF3bGn28; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so41356495e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 02:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718703589; x=1719308389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ogriNGL3I569ecmDfsnIo+MYh0IZdFTbiFXWHmgjV4k=;
        b=NF3bGn282Mc2d0vtxlTKHcRvwy3wA+uKEOp1ZYPO/XQQwASgOEiaWJvM1Qx50gY463
         cvR4lQji+Bq9NrI0snbfbzq/vYTR3pgSMtnrBaRkTlhP8seyAbReM1iJZILSf1L9qM0p
         QZRgDA0KSYMUdtNz6lDQT1lAQF4g0fFxJmLZIz9CGz9XenYyAmUOflTPETwX6N9ORMNm
         KJIdcNGSTfusPFTLzyljoiTXAQ0UuYK4eOdODpy81gkrblrv5hstRbPlb4a/Z5HEQzrv
         3fpneJDB/ng3A9ZJLBpcgfXvuImYZ5L9MTNhz1ySN7KuJ4uG8/c14rSj6i5O2mwzdfP4
         lrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718703589; x=1719308389;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ogriNGL3I569ecmDfsnIo+MYh0IZdFTbiFXWHmgjV4k=;
        b=XyeXD2Cu+7whr0beJatevC0NzSR+s/3O/Tepb4AaYKrI0/vyu8hAlzeJbwomuSREh6
         M1lL4pSkyoY84UL4Y0F6Kn+ljPCGyqHdtfotQIn4LLo3qm3FWXJaECzuf25nNxrQ9mg7
         DFZlTqrbEwLLPeBSC2HvHXmL9QQEkxM5QUcB28Zj8BJsqrN8AMOYiRxuVTIfo/HFOKl1
         Vh2YqeD3Iw8Sm7TbV2Vt9o7NFH1Hu0CqR3gwj9BfuGFRrZlNwJEbuhjSwZ0d/ucwgviz
         utkXvadPURvnDhogh0MCKw8Dru1bQlRTKxe2VIYKgple/vmtEXQx3Y/wxyaPhf6/YO/e
         z+8w==
X-Forwarded-Encrypted: i=1; AJvYcCWAWWT1RnA5dHxq8LPv13Y27ZB/m6+qPt+2IgzhMDp4KZr/Xw530j/KMUfyRguHmA/R6DK0JDTe4ibad0dBtxS8R+WMWYAkhfzO2Q==
X-Gm-Message-State: AOJu0YydG3XzfL2rxEdROQdw3whlh9RhNDWt7vpZZ4SWiQd0P10I53ze
	CcirUClenPMq3y1CL5VxuPbDot/o5/Hn/mHBKW4hyCffNRLrJbtgAEXK+tWmfx8=
X-Google-Smtp-Source: AGHT+IEIN6tp7RT4XFF4v3F4al0ZGpML4l/gRVmowPIaegfQ/SdPPLlcj0SnPLkBHuNsyN/gwFkSkg==
X-Received: by 2002:a05:600c:510e:b0:423:b672:9d64 with SMTP id 5b1f17b1804b1-423b6729f5cmr56726995e9.18.1718703588911;
        Tue, 18 Jun 2024 02:39:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36075104954sm13703780f8f.99.2024.06.18.02.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 02:39:48 -0700 (PDT)
Message-ID: <6e5ad808-f4ee-45c3-a1cc-009f2f1010b9@linaro.org>
Date: Tue, 18 Jun 2024 11:39:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dt-bindings: mmc: sdhci-of-dwcmhsc: Add Sophgo
 SG2042 support
To: Chen Wang <unicornxw@gmail.com>, adrian.hunter@intel.com,
 aou@eecs.berkeley.edu, conor+dt@kernel.org, guoren@kernel.org,
 inochiama@outlook.com, jszhang@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh@kernel.org, ulf.hansson@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-riscv@lists.infradead.org,
 chao.wei@sophgo.com, haijiao.liu@sophgo.com, xiaoguang.xing@sophgo.com,
 tingzhu.wang@sophgo.com
Cc: Chen Wang <unicorn_wang@outlook.com>
References: <cover.1718697954.git.unicorn_wang@outlook.com>
 <dcc060c3ada7a56eda02b586c16c47f0a0905c61.1718697954.git.unicorn_wang@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
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
In-Reply-To: <dcc060c3ada7a56eda02b586c16c47f0a0905c61.1718697954.git.unicorn_wang@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 10:38, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> SG2042 use Synopsys dwcnshc IP for SD/eMMC controllers.
> 
> SG2042 defines 3 clocks for SD/eMMC controllers.
> - AXI_EMMC/AXI_SD for aclk/hclk(Bus interface clocks in DWC_mshc)
>   and blck(Core Base Clock in DWC_mshc), these 3 clocks share one
>   source, so reuse existing "core".
> - 100K_EMMC/100K_SD for cqetmclk(Timer clocks in DWC_mshc), so reuse
>   existing "timer" which was added for rockchip specified.
> - EMMC_100M/SD_100M for cclk(Card clocks in DWC_mshc), add new "card".
> 
> Adding example for sg2042.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 69 +++++++++++++------
>  1 file changed, 49 insertions(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 4d3031d9965f..b53f20733f79 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -21,6 +21,7 @@ properties:
>        - snps,dwcmshc-sdhci
>        - sophgo,cv1800b-dwcmshc
>        - sophgo,sg2002-dwcmshc
> +      - sophgo,sg2042-dwcmshc
>        - thead,th1520-dwcmshc
>  
>    reg:
> @@ -29,25 +30,6 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> -  clocks:

Widest constraints stay here.

> -    minItems: 1
> -    items:
> -      - description: core clock
> -      - description: bus clock for optional
> -      - description: axi clock for rockchip specified
> -      - description: block clock for rockchip specified
> -      - description: timer clock for rockchip specified
> -
> -
> -  clock-names:
> -    minItems: 1

Widest constraints stay here.

> -    items:
> -      - const: core
> -      - const: bus
> -      - const: axi
> -      - const: block
> -      - const: timer
> -
>    resets:
>      maxItems: 5
>  
> @@ -63,6 +45,43 @@ properties:
>      description: Specify the number of delay for tx sampling.
>      $ref: /schemas/types.yaml#/definitions/uint8
>  
> +if:

This should be under allOf block and move the allOf to expected place
like in example schema. So after required: block.

> +  properties:
> +    compatible:
> +      contains:
> +        const: sophgo,sg2042-dwcmshc
> +then:
> +  properties:
> +    clocks:
> +      items:
> +        - description: core clock
> +        - description: timer clock
> +        - description: card clock

What is the card clock? It's suspicious to see new clock not matching
anything from previous ones.

> +
> +    clock-names:
> +      items:
> +        - const: core
> +        - const: timer
> +        - const: card
> +else:
> +  properties:
> +    clocks:
> +      minItems: 1
> +      items:
> +        - description: core clock
> +        - description: bus clock for optional
> +        - description: axi clock for rockchip specified
> +        - description: block clock for rockchip specified
> +        - description: timer clock for rockchip specified
> +
> +    clock-names:
> +      minItems: 1
> +      items:
> +        - const: core
> +        - const: bus
> +        - const: axi
> +        - const: block
> +        - const: timer
>  
>  required:
>    - compatible
> @@ -96,5 +115,15 @@ examples:
>        #address-cells = <1>;
>        #size-cells = <0>;
>      };
> -
> +  - |
> +    mmc@bb0000 {
> +      compatible = "sophgo,sg2042-dwcmshc";
> +      reg = <0xcc000 0x1000>;
> +      interrupts = <0 25 0x4>;

Use defines... or actually drop entire example, no point to keep growing
them.

> +      clocks = <&cru 17>, <&cru 18>, <&cru 19>;
> +      clock-names = "core", "timer", "card";
> +      bus-width = <8>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +    };
>  ...

Best regards,
Krzysztof


